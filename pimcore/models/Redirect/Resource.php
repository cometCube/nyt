<?php
/**
 * Pimcore
 *
 * LICENSE
 *
 * This source file is subject to the new BSD license that is bundled
 * with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://www.pimcore.org/license
 *
 * @category   Pimcore
 * @package    Redirect
 * @copyright  Copyright (c) 2009-2014 pimcore GmbH (http://www.pimcore.org)
 * @license    http://www.pimcore.org/license     New BSD License
 */

namespace Pimcore\Model\Redirect;

use Pimcore\Model;

class Resource extends Model\Resource\AbstractResource {

    /**
     * Get the data for the object from database for the given id, or from the ID which is set in the object
     *
     * @param integer $id
     * @return void
     */
    public function getById($id = null) {

        if ($id != null) {
            $this->model->setId($id);
        }

        $data = $this->db->fetchRow("SELECT * FROM redirects WHERE id = ?", $this->model->getId());
        $this->assignVariablesToModel($data);
    }

    /**
     * Save object to database
     *
     * @return void
     */
    public function save() {
        if ($this->model->getId()) {
            return $this->model->update();
        }
        return $this->create();
    }

    /**
     * Deletes object from database
     *
     * @return void
     */
    public function delete() {
        $this->db->delete("redirects", $this->db->quoteInto("id = ?", $this->model->getId()));
        
        $this->model->clearDependentCache();
    }

    /**
     * @throws \Exception
     */
    public function update() {
        try {
            $ts = time();
            $this->model->setModificationDate($ts);

            $type = get_object_vars($this->model);

            foreach ($type as $key => $value) {
                if (in_array($key, $this->getValidTableColumns("redirects"))) {
                    if(is_bool($value)) {
                        $value = (int) $value;
                    }
                    $data[$key] = $value;
                }
            }

            $this->db->update("redirects", $data, $this->db->quoteInto("id = ?", $this->model->getId()));
        }
        catch (\Exception $e) {
            throw $e;
        }
        
        $this->model->clearDependentCache();
    }

    /**
     * Create a new record for the object in database
     *
     * @return boolean
     */
    public function create() {
        $this->db->insert("redirects", array());

        $ts = time();
        $this->model->setModificationDate($ts);
        $this->model->setCreationDate($ts);

        $this->model->setId($this->db->lastInsertId());

        return $this->save();
    }
}